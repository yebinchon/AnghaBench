; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_collapse_redundant_completers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_collapse_redundant_completers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.main_entry = type { i32*, %struct.main_entry* }
%struct.TYPE_2__ = type { i32 }

@maintable = common dso_local global %struct.main_entry* null, align 8
@glistlen = common dso_local global i32 0, align 4
@glist = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @collapse_redundant_completers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collapse_redundant_completers() #0 {
  %1 = alloca %struct.main_entry*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.main_entry*, %struct.main_entry** @maintable, align 8
  store %struct.main_entry* %3, %struct.main_entry** %1, align 8
  br label %4

4:                                                ; preds = %26, %0
  %5 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %6 = icmp ne %struct.main_entry* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %9 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 (...) @abort() #3
  unreachable

14:                                               ; preds = %7
  %15 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %16 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %17 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @compute_completer_bits(%struct.main_entry* %15, i32* %18)
  %20 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %21 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32* @insert_gclist(i32* %22)
  %24 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %25 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  br label %26

26:                                               ; preds = %14
  %27 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %28 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %27, i32 0, i32 1
  %29 = load %struct.main_entry*, %struct.main_entry** %28, align 8
  store %struct.main_entry* %29, %struct.main_entry** %1, align 8
  br label %4

30:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @glistlen, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @glist, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %31

46:                                               ; preds = %31
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @compute_completer_bits(%struct.main_entry*, i32*) #2

declare dso_local i32* @insert_gclist(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
