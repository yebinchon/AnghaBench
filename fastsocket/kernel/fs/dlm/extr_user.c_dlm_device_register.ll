; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_dlm_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_dlm_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@name_prefix = common dso_local global i8* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@device_fops = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i8*)* @dlm_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_device_register(%struct.dlm_ls* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i8*, i8** @name_prefix, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call i64 @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %30 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %14
  br label %64

35:                                               ; preds = %14
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** @name_prefix, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32* @device_fops, i32** %47, align 8
  %48 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %50 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %53 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %52, i32 0, i32 0
  %54 = call i32 @misc_register(%struct.TYPE_2__* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %35
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %59 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @kfree(i64 %61)
  br label %63

63:                                               ; preds = %57, %35
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
