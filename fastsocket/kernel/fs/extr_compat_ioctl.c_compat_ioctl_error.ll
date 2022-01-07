; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat_ioctl.c_compat_ioctl_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat_ioctl.c_compat_ioctl_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@_IOC_TYPESHIFT = common dso_local global i32 0, align 4
@_IOC_TYPEMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"ioctl32(%s:%d): Unknown cmd fd(%d) cmd(%08x){t:%s;sz:%u} arg(%08x) on %s\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_IOC_SIZESHIFT = common dso_local global i32 0, align 4
@_IOC_SIZEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32, i32, i64)* @compat_ioctl_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_ioctl_error(%struct.file* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [10 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @__get_free_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i8* @d_path(i32* %19, i8* %20, i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %27

27:                                               ; preds = %26, %17
  br label %28

28:                                               ; preds = %27, %4
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @_IOC_TYPESHIFT, align 4
  %32 = lshr i32 %30, %31
  %33 = load i32, i32* @_IOC_TYPEMASK, align 4
  %34 = and i32 %32, %33
  %35 = trunc i32 %34 to i8
  %36 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %35)
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @isprint(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %28
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %44)
  br label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @_IOC_SIZESHIFT, align 4
  %58 = lshr i32 %56, %57
  %59 = load i32, i32* @_IOC_SIZEMASK, align 4
  %60 = and i32 %58, %59
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @compat_printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %52, i32 %53, i32 %54, i8* %55, i32 %60, i32 %62, i8* %63)
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %46
  %68 = load i8*, i8** %11, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = call i32 @free_page(i64 %69)
  br label %71

71:                                               ; preds = %67, %46
  ret void
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @d_path(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @compat_printk(i8*, i32, i32, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
