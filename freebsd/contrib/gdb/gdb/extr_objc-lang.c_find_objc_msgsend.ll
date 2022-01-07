; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_find_objc_msgsend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_find_objc_msgsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64 }
%struct.minimal_symbol = type { i32 }

@nmethcalls = common dso_local global i32 0, align 4
@methcalls = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_objc_msgsend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_objc_msgsend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minimal_symbol*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %85, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @nmethcalls, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %88

7:                                                ; preds = %3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %13, i32* null, i32* null)
  store %struct.minimal_symbol* %14, %struct.minimal_symbol** %2, align 8
  %15 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %16 = icmp eq %struct.minimal_symbol* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 95
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %35, i32* null, i32* null)
  store %struct.minimal_symbol* %36, %struct.minimal_symbol** %2, align 8
  br label %37

37:                                               ; preds = %28, %17, %7
  %38 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %39 = icmp eq %struct.minimal_symbol* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %42 = load i32, i32* %1, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %47 = load i32, i32* %1, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  br label %85

51:                                               ; preds = %37
  %52 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %53 = call i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %56 = load i32, i32* %1, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %70, %51
  %61 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %62 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %61, i32 1
  store %struct.minimal_symbol* %62, %struct.minimal_symbol** %2, align 8
  %63 = call i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %66 = load i32, i32* %1, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i64 %64, i64* %69, align 8
  br label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %72 = load i32, i32* %1, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @methcalls, align 8
  %78 = load i32, i32* %1, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %76, %82
  br i1 %83, label %60, label %84

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i32, i32* %1, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %3

88:                                               ; preds = %3
  ret void
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
