; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_remount_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"old flags %#lx, new flags %#x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid or unknown remount parameter\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot re-mount due to prior errors\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"disable bulk-read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @ubifs_remount_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 1
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  store %struct.ubifs_info* %12, %struct.ubifs_info** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @ubifs_parse_options(%struct.ubifs_info* %19, i8* %20, i32 1)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = call i32 @ubifs_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %109

27:                                               ; preds = %3
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MS_RDONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MS_RDONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = call i32 @ubifs_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EROFS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %109

49:                                               ; preds = %40
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %51 = call i32 @ubifs_remount_rw(%struct.ubifs_info* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %109

56:                                               ; preds = %49
  br label %83

57:                                               ; preds = %34, %27
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MS_RDONLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MS_RDONLY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = call i32 @ubifs_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EROFS, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %109

79:                                               ; preds = %70
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %81 = call i32 @ubifs_remount_ro(%struct.ubifs_info* %80)
  br label %82

82:                                               ; preds = %79, %64, %57
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %90 = call i32 @bu_init(%struct.ubifs_info* %89)
  br label %101

91:                                               ; preds = %83
  %92 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %91, %88
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @ubifs_assert(i32 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %101, %75, %54, %45, %24
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @ubifs_parse_options(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @ubifs_msg(i8*) #1

declare dso_local i32 @ubifs_remount_rw(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_remount_ro(%struct.ubifs_info*) #1

declare dso_local i32 @bu_init(%struct.ubifs_info*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
