; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_gen_regexp_el.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_gen_regexp_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"garbage after ) in reservation `%s'\00", align 1
@reserv_str = common dso_local global i32 0, align 4
@NOTHING_NAME = common dso_local global i32 0, align 4
@rm_nothing = common dso_local global i32 0, align 4
@rm_unit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*)* @gen_regexp_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @gen_regexp_el(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 40
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 41
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @reserv_str, align 4
  %23 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %10
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i8* @alloca(i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 2
  %33 = call i32 @memcpy(i8* %28, i8* %30, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = call %struct.TYPE_7__* @gen_regexp_sequence(i8* %39)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %3, align 8
  br label %61

41:                                               ; preds = %1
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* @NOTHING_NAME, align 4
  %44 = call i64 @strcmp(i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = call %struct.TYPE_7__* @create_node(i32 4)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %3, align 8
  %48 = load i32, i32* @rm_nothing, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %60

51:                                               ; preds = %41
  %52 = call %struct.TYPE_7__* @create_node(i32 4)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %3, align 8
  %53 = load i32, i32* @rm_unit, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %2, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = call %struct.TYPE_8__* @REGEXP_UNIT(%struct.TYPE_7__* %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  br label %60

60:                                               ; preds = %51, %46
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %62
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @gen_regexp_sequence(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @create_node(i32) #1

declare dso_local %struct.TYPE_8__* @REGEXP_UNIT(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
