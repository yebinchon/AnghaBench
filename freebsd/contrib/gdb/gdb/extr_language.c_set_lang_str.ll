; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_lang_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_lang_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@language = common dso_local global i64 0, align 8
@language_mode = common dso_local global i64 0, align 8
@language_mode_auto = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"auto; currently \00", align 1
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_lang_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lang_str() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i64, i64* @language, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @language, align 8
  %6 = call i32 @xfree(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @language_mode, align 8
  %9 = load i64, i64* @language_mode_auto, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i8*, i8** %1, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @concat(i8* %13, i32 %16, i32* null)
  store i64 %17, i64* @language, align 8
  ret void
}

declare dso_local i32 @xfree(i64) #1

declare dso_local i64 @concat(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
