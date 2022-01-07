; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_ea_ext_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_ea_ext_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.extended_attribute = type { i32, i32, i32, i64 }
%struct.buffer_head = type { i32 }
%struct.anode = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"ea->indirect set while ea->valuelen!=8, %s %08x, pos %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_ea_ext_remove(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [268 x i8], align 16
  %11 = alloca %struct.extended_attribute*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.anode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %87, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %98

18:                                               ; preds = %14
  %19 = getelementptr inbounds [268 x i8], [268 x i8]* %10, i64 0, i64 0
  %20 = bitcast i8* %19 to %struct.extended_attribute*
  store %struct.extended_attribute* %20, %struct.extended_attribute** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hpfs_error(%struct.super_block* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i32 %32)
  br label %124

34:                                               ; preds = %18
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds [268 x i8], [268 x i8]* %10, i64 0, i64 0
  %40 = call i64 @hpfs_ea_read(%struct.super_block* %35, i32 %36, i32 %37, i32 %38, i32 4, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %124

43:                                               ; preds = %34
  %44 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %45 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %43
  %49 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %50 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 8
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @hpfs_error(%struct.super_block* %54, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %59, i32 %60)
  br label %124

62:                                               ; preds = %48
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 4
  %68 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %69 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 9
  %72 = getelementptr inbounds [268 x i8], [268 x i8]* %10, i64 0, i64 0
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = call i64 @hpfs_ea_read(%struct.super_block* %63, i32 %64, i32 %65, i32 %67, i32 %71, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %124

77:                                               ; preds = %62
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %80 = call i32 @ea_sec(%struct.extended_attribute* %79)
  %81 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %82 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %85 = call i32 @ea_len(%struct.extended_attribute* %84)
  %86 = call i32 @hpfs_ea_remove(%struct.super_block* %78, i32 %80, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %77, %43
  %88 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %89 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %92 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = add nsw i32 %94, 5
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %14

98:                                               ; preds = %14
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 511
  %106 = lshr i32 %105, 9
  %107 = call i32 @hpfs_free_sectors(%struct.super_block* %102, i32 %103, i32 %106)
  br label %124

108:                                              ; preds = %98
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %109, i32 %110, %struct.buffer_head** %12)
  store %struct.anode* %111, %struct.anode** %13, align 8
  %112 = icmp ne %struct.anode* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.super_block*, %struct.super_block** %5, align 8
  %115 = load %struct.anode*, %struct.anode** %13, align 8
  %116 = getelementptr inbounds %struct.anode, %struct.anode* %115, i32 0, i32 0
  %117 = call i32 @hpfs_remove_btree(%struct.super_block* %114, i32* %116)
  %118 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %119 = call i32 @brelse(%struct.buffer_head* %118)
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @hpfs_free_sectors(%struct.super_block* %120, i32 %121, i32 1)
  br label %123

123:                                              ; preds = %113, %108
  br label %124

124:                                              ; preds = %25, %42, %53, %76, %123, %101
  ret void
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @hpfs_ea_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
