; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_dlm_create_debug_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_dlm_create_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i8*, i8*, i8*, i8*, i8* }

@DLM_LOCKSPACE_LEN = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@dlm_root = common dso_local global i32 0, align 4
@format1_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s_locks\00", align 1
@format2_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s_all\00", align 1
@format3_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s_waiters\00", align 1
@waiters_fops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_create_debug_file(%struct.dlm_ls* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  %7 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %8 = add nsw i32 %7, 8
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @S_IFREG, align 4
  %16 = load i32, i32* @S_IRUGO, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @dlm_root, align 4
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %20 = call i8* @debugfs_create_file(i8* %14, i32 %17, i32 %18, %struct.dlm_ls* %19, i32* @format1_fops)
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %23, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %95

28:                                               ; preds = %1
  %29 = trunc i64 %9 to i32
  %30 = call i32 @memset(i8* %11, i32 0, i32 %29)
  %31 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %32 = add nsw i32 %31, 8
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %11, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @S_IFREG, align 4
  %38 = load i32, i32* @S_IRUGO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @dlm_root, align 4
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %42 = call i8* @debugfs_create_file(i8* %11, i32 %39, i32 %40, %struct.dlm_ls* %41, i32* @format2_fops)
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %44 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %46 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %28
  br label %95

50:                                               ; preds = %28
  %51 = trunc i64 %9 to i32
  %52 = call i32 @memset(i8* %11, i32 0, i32 %51)
  %53 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %54 = add nsw i32 %53, 8
  %55 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %56 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i8* %11, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @S_IFREG, align 4
  %60 = load i32, i32* @S_IRUGO, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @dlm_root, align 4
  %63 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %64 = call i8* @debugfs_create_file(i8* %11, i32 %61, i32 %62, %struct.dlm_ls* %63, i32* @format3_fops)
  %65 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %66 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %68 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %50
  br label %95

72:                                               ; preds = %50
  %73 = trunc i64 %9 to i32
  %74 = call i32 @memset(i8* %11, i32 0, i32 %73)
  %75 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %76 = add nsw i32 %75, 8
  %77 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %78 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @snprintf(i8* %11, i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @S_IFREG, align 4
  %82 = load i32, i32* @S_IRUGO, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @dlm_root, align 4
  %85 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %86 = call i8* @debugfs_create_file(i8* %11, i32 %83, i32 %84, %struct.dlm_ls* %85, i32* @waiters_fops)
  %87 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %88 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %90 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %72
  br label %95

94:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %100

95:                                               ; preds = %93, %71, %49, %27
  %96 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %97 = call i32 @dlm_delete_debug_file(%struct.dlm_ls* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %94
  %101 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.dlm_ls*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @dlm_delete_debug_file(%struct.dlm_ls*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
