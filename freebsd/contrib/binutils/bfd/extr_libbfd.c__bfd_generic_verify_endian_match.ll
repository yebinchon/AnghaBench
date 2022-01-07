; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_libbfd.c__bfd_generic_verify_endian_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_libbfd.c__bfd_generic_verify_endian_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@BFD_ENDIAN_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"%B: compiled for a big endian system and target is little endian\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"%B: compiled for a little endian system and target is big endian\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_generic_verify_endian_match(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BFD_ENDIAN_UNKNOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BFD_ENDIAN_UNKNOWN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i64 @bfd_big_endian(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %6, align 8
  br label %42

40:                                               ; preds = %34
  %41 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @_bfd_error_handler(i8* %43, %struct.TYPE_9__* %44)
  %46 = load i32, i32* @bfd_error_wrong_format, align 4
  %47 = call i32 @bfd_set_error(i32 %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %26, %18, %2
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @bfd_big_endian(%struct.TYPE_9__*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @_bfd_error_handler(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
