; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@EROFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @journal_start(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.TYPE_11__* (...) @journal_current_handle()
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EROFS, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.TYPE_11__* @ERR_PTR(i32 %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @J_ASSERT(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %3, align 8
  br label %61

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_11__* @new_handle(i32 %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %6, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.TYPE_11__* @ERR_PTR(i32 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %3, align 8
  br label %61

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = call i32 @start_this_handle(i32* %46, %struct.TYPE_11__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = call i32 @jbd_free_handle(%struct.TYPE_11__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.TYPE_11__* @ERR_PTR(i32 %56)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %6, align 8
  br label %59

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %51
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %3, align 8
  br label %61

61:                                               ; preds = %59, %38, %18, %11
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %62
}

declare dso_local %struct.TYPE_11__* @journal_current_handle(...) #1

declare dso_local %struct.TYPE_11__* @ERR_PTR(i32) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local %struct.TYPE_11__* @new_handle(i32) #1

declare dso_local i32 @start_this_handle(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @jbd_free_handle(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
