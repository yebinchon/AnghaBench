; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@REGISTER_PREFIX = common dso_local global i8 0, align 1
@allow_naked_reg = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@reg_section = common dso_local global i64 0, align 8
@O_register = common dso_local global i64 0, align 8
@i386_regtab_size = common dso_local global i64 0, align 8
@i386_regtab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8**)* @parse_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_register(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @REGISTER_PREFIX, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @allow_naked_reg, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = call i32* @parse_real_register(i8* %20, i8** %21)
  store i32* %22, i32** %5, align 8
  br label %24

23:                                               ; preds = %16
  store i32* null, i32** %5, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %75, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @input_line_pointer, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %3, align 8
  store i8* %29, i8** @input_line_pointer, align 8
  %30 = call signext i8 (...) @get_symbol_end()
  store i8 %30, i8* %7, align 1
  %31 = load i8*, i8** %3, align 8
  %32 = call i32* @symbol_find(i8* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %27
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @S_GET_SEGMENT(i32* %36)
  %38 = load i64, i64* @reg_section, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = call %struct.TYPE_3__* @symbol_get_value_expression(i32* %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @O_register, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @know(i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @i386_regtab_size, align 8
  %59 = icmp slt i64 %57, %58
  br label %60

60:                                               ; preds = %54, %40
  %61 = phi i1 [ false, %40 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @know(i32 %62)
  %64 = load i32*, i32** @i386_regtab, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32* %68, i32** %5, align 8
  %69 = load i8*, i8** @input_line_pointer, align 8
  %70 = load i8**, i8*** %4, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %60, %35, %27
  %72 = load i8, i8* %7, align 1
  %73 = load i8*, i8** @input_line_pointer, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  store i8* %74, i8** @input_line_pointer, align 8
  br label %75

75:                                               ; preds = %71, %24
  %76 = load i32*, i32** %5, align 8
  ret i32* %76
}

declare dso_local i32* @parse_real_register(i8*, i8**) #1

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local %struct.TYPE_3__* @symbol_get_value_expression(i32*) #1

declare dso_local i32 @know(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
