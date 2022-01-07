; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i8*, i64, i32)* @pfprint_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfprint_port(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca %struct.servent*, align 8
  %19 = alloca %struct.servent, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htons(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %26 = call %struct.servent* (i32, i32*, %struct.servent*, i8*, i32, ...) @getservbyport_r(i32 %24, i32* null, %struct.servent* %19, i8* %25, i32 256, %struct.servent** %18)
  %27 = icmp ugt %struct.servent* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %7
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.servent*, %struct.servent** %18, align 8
  %33 = getelementptr inbounds %struct.servent, %struct.servent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @dt_printf(i32* %29, i32* %30, i8* %31, i8* %34)
  store i32 %35, i32* %8, align 4
  br label %47

36:                                               ; preds = %7
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %38 = load i8*, i8** %13, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snprintf(i8* %37, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %46 = call i32 @dt_printf(i32* %42, i32* %43, i8* %44, i8* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %36, %28
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.servent* @getservbyport_r(i32, i32*, %struct.servent*, i8*, i32, ...) #1

declare dso_local i32 @dt_printf(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
