; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_is_pending_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_is_pending_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.mdebug_pending = type { i8*, %struct.mdebug_pending* }

@debug_info = common dso_local global %struct.TYPE_2__* null, align 8
@pending_list = common dso_local global %struct.mdebug_pending** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mdebug_pending* (i32*, i8*)* @is_pending_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mdebug_pending* @is_pending_symbol(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdebug_pending*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %7 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mdebug_pending**, %struct.mdebug_pending*** @pending_list, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mdebug_pending*, %struct.mdebug_pending** %16, i64 %18
  %20 = load %struct.mdebug_pending*, %struct.mdebug_pending** %19, align 8
  store %struct.mdebug_pending* %20, %struct.mdebug_pending** %6, align 8
  br label %21

21:                                               ; preds = %32, %2
  %22 = load %struct.mdebug_pending*, %struct.mdebug_pending** %6, align 8
  %23 = icmp ne %struct.mdebug_pending* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.mdebug_pending*, %struct.mdebug_pending** %6, align 8
  %26 = getelementptr inbounds %struct.mdebug_pending, %struct.mdebug_pending* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %36

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.mdebug_pending*, %struct.mdebug_pending** %6, align 8
  %34 = getelementptr inbounds %struct.mdebug_pending, %struct.mdebug_pending* %33, i32 0, i32 1
  %35 = load %struct.mdebug_pending*, %struct.mdebug_pending** %34, align 8
  store %struct.mdebug_pending* %35, %struct.mdebug_pending** %6, align 8
  br label %21

36:                                               ; preds = %30, %21
  %37 = load %struct.mdebug_pending*, %struct.mdebug_pending** %6, align 8
  ret %struct.mdebug_pending* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
