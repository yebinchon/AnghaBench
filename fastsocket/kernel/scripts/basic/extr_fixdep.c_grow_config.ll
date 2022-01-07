; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_grow_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_grow_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@len_config = common dso_local global i32 0, align 4
@size_config = common dso_local global i32 0, align 4
@str_config = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fixdep:malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @grow_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i32, i32* @len_config, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %4, %5
  %7 = load i32, i32* @size_config, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, i32* @size_config, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 2048, i32* @size_config, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32*, i32** @str_config, align 8
  %15 = load i32, i32* @size_config, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* @size_config, align 4
  %17 = call i32* @realloc(i32* %14, i32 %16)
  store i32* %17, i32** @str_config, align 8
  %18 = load i32*, i32** @str_config, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %13
  br label %3

24:                                               ; preds = %3
  ret void
}

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
