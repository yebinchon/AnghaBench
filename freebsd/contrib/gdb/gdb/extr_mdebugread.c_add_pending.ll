; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_add_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_add_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.mdebug_pending = type { i8*, %struct.mdebug_pending*, %struct.type* }
%struct.type = type { i32 }

@debug_info = common dso_local global %struct.TYPE_3__* null, align 8
@current_objfile = common dso_local global %struct.TYPE_4__* null, align 8
@pending_list = common dso_local global %struct.mdebug_pending** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.type*)* @add_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pending(i32* %0, i8* %1, %struct.type* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdebug_pending*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.type* %2, %struct.type** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_info, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = ptrtoint i32* %9 to i64
  %14 = ptrtoint i32* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.mdebug_pending* @is_pending_symbol(i32* %18, i8* %19)
  store %struct.mdebug_pending* %20, %struct.mdebug_pending** %8, align 8
  %21 = load %struct.mdebug_pending*, %struct.mdebug_pending** %8, align 8
  %22 = icmp ne %struct.mdebug_pending* %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_objfile, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i64 @obstack_alloc(i32* %25, i32 24)
  %27 = inttoptr i64 %26 to %struct.mdebug_pending*
  store %struct.mdebug_pending* %27, %struct.mdebug_pending** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.mdebug_pending*, %struct.mdebug_pending** %8, align 8
  %30 = getelementptr inbounds %struct.mdebug_pending, %struct.mdebug_pending* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.type*, %struct.type** %6, align 8
  %32 = load %struct.mdebug_pending*, %struct.mdebug_pending** %8, align 8
  %33 = getelementptr inbounds %struct.mdebug_pending, %struct.mdebug_pending* %32, i32 0, i32 2
  store %struct.type* %31, %struct.type** %33, align 8
  %34 = load %struct.mdebug_pending**, %struct.mdebug_pending*** @pending_list, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mdebug_pending*, %struct.mdebug_pending** %34, i64 %36
  %38 = load %struct.mdebug_pending*, %struct.mdebug_pending** %37, align 8
  %39 = load %struct.mdebug_pending*, %struct.mdebug_pending** %8, align 8
  %40 = getelementptr inbounds %struct.mdebug_pending, %struct.mdebug_pending* %39, i32 0, i32 1
  store %struct.mdebug_pending* %38, %struct.mdebug_pending** %40, align 8
  %41 = load %struct.mdebug_pending*, %struct.mdebug_pending** %8, align 8
  %42 = load %struct.mdebug_pending**, %struct.mdebug_pending*** @pending_list, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mdebug_pending*, %struct.mdebug_pending** %42, i64 %44
  store %struct.mdebug_pending* %41, %struct.mdebug_pending** %45, align 8
  br label %46

46:                                               ; preds = %23, %3
  ret void
}

declare dso_local %struct.mdebug_pending* @is_pending_symbol(i32*, i8*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
