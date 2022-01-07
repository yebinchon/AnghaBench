; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_setopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_setopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"couldn't set option \22%s\22 to \22%s\22: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_setopt(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = call i32 @bzero(%struct.TYPE_4__* %14, i32 32)
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %19 = call i32 @dtrace_getopt(i32* %16, i8* %17, i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @dtrace_setopt(i32* %20, i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %29 = call i32 @dtrace_getopt(i32* %26, i8* %27, i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32* %30, i32** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @dt_handle_setopt(i32* %36, %struct.TYPE_4__* %14)
  store i32 %37, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %72

41:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %72

42:                                               ; preds = %4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @dtrace_errno(i32* %44)
  %46 = call i8* @dtrace_errmsg(i32* %43, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %48, %50
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %51, %53
  %55 = add nsw i32 %54, 80
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i8* @alloca(i32 %56)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61, i8* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @dt_handle_liberr(i32* %64, i32* %65, i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %72

70:                                               ; preds = %42
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %69, %41, %39
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dtrace_getopt(i32*, i8*, i32*) #1

declare dso_local i64 @dtrace_setopt(i32*, i8*, i8*) #1

declare dso_local i32 @dt_handle_setopt(i32*, %struct.TYPE_4__*) #1

declare dso_local i8* @dtrace_errmsg(i32*, i32) #1

declare dso_local i32 @dtrace_errno(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dt_handle_liberr(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
