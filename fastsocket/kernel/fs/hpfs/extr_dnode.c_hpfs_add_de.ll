; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_add_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_add_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.dnode = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"name (%c,%d) already exists in dnode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @hpfs_add_de(%struct.super_block* %0, %struct.dnode* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hpfs_dirent*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.dnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.dnode* %1, %struct.dnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dnode*, %struct.dnode** %8, align 8
  %17 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %16)
  store %struct.hpfs_dirent* %17, %struct.hpfs_dirent** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @de_size(i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.dnode*, %struct.dnode** %8, align 8
  %22 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %21)
  store %struct.hpfs_dirent* %22, %struct.hpfs_dirent** %12, align 8
  br label %23

23:                                               ; preds = %57, %5
  %24 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %25 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %26 = icmp ult %struct.hpfs_dirent* %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load %struct.super_block*, %struct.super_block** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %32 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %35 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %38 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hpfs_compare_names(%struct.super_block* %28, i8* %29, i32 %30, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %27
  %44 = load %struct.super_block*, %struct.super_block** %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.dnode*, %struct.dnode** %8, align 8
  %49 = getelementptr inbounds %struct.dnode, %struct.dnode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hpfs_error(%struct.super_block* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %46, i32 %47, i32 %50)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %6, align 8
  br label %122

52:                                               ; preds = %27
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %60

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %59 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %58)
  store %struct.hpfs_dirent* %59, %struct.hpfs_dirent** %12, align 8
  br label %23

60:                                               ; preds = %55, %23
  %61 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %62 = bitcast %struct.hpfs_dirent* %61 to i8*
  %63 = load i32, i32* %14, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %67 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %68 = bitcast %struct.hpfs_dirent* %67 to i8*
  %69 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %70 = bitcast %struct.hpfs_dirent* %69 to i8*
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memmove(i8* %65, %struct.hpfs_dirent* %66, i32 %74)
  %76 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @memset(%struct.hpfs_dirent* %76, i32 0, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %60
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %84 = bitcast %struct.hpfs_dirent* %83 to i8*
  %85 = load i32, i32* %14, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds i8, i8* %87, i64 -4
  %89 = bitcast i8* %88 to i32*
  store i32 %82, i32* %89, align 4
  %90 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %91 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %60
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %95 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %100 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @hpfs_is_name_long(i8* %102, i32 %103)
  %105 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %106 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %109 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %111 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @memcpy(i32 %112, i8* %113, i32 %114)
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.dnode*, %struct.dnode** %8, align 8
  %118 = getelementptr inbounds %struct.dnode, %struct.dnode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  store %struct.hpfs_dirent* %121, %struct.hpfs_dirent** %6, align 8
  br label %122

122:                                              ; preds = %101, %43
  %123 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  ret %struct.hpfs_dirent* %123
}

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local i32 @de_size(i32, i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_compare_names(%struct.super_block*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8 zeroext, i32, i32) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @memmove(i8*, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @hpfs_is_name_long(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
