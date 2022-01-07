; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_org.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_org.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid segment \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ignoring fill value in absolute section\00", align 1
@O_constant = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"only constant offsets supported in absolute section\00", align 1
@abs_section_offset = common dso_local global i32 0, align 4
@OCTETS_PER_BYTE = common dso_local global i32 0, align 4
@O_symbol = common dso_local global i64 0, align 8
@rs_org = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*, i32)* @do_org to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_org(i64 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @now_seg, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @absolute_section, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @segment_name(i64 %19)
  %21 = call i32 (i32, ...) @as_bad(i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %13, %3
  %23 = load i64, i64* @now_seg, align 8
  %24 = load i64, i64* @absolute_section, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @as_warn(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @O_constant, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (i32, ...) @as_bad(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* @abs_section_offset, align 4
  br label %78

47:                                               ; preds = %22
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %8, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @OCTETS_PER_BYTE, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @O_constant, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @O_symbol, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = call i32* @make_expr_symbol(%struct.TYPE_4__* %68)
  store i32* %69, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %61, %47
  %71 = load i32, i32* @rs_org, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @frag_var(i32 %71, i32 1, i32 1, i32 0, i32* %72, i32 %73, i8* null)
  store i8* %74, i8** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %7, align 8
  store i8 %76, i8* %77, align 1
  br label %78

78:                                               ; preds = %70, %43
  ret void
}

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @segment_name(i64) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32* @make_expr_symbol(%struct.TYPE_4__*) #1

declare dso_local i8* @frag_var(i32, i32, i32, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
