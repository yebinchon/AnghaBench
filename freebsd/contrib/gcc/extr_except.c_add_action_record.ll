; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_add_action_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_add_action_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.action_record = type { i32, i32, i32 }

@INSERT = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @add_action_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_action_record(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.action_record**, align 8
  %8 = alloca %struct.action_record*, align 8
  %9 = alloca %struct.action_record, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.action_record, %struct.action_record* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.action_record, %struct.action_record* %9, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @INSERT, align 4
  %16 = call i64 @htab_find_slot(i32 %14, %struct.action_record* %9, i32 %15)
  %17 = inttoptr i64 %16 to %struct.action_record**
  store %struct.action_record** %17, %struct.action_record*** %7, align 8
  %18 = load %struct.action_record**, %struct.action_record*** %7, align 8
  %19 = load %struct.action_record*, %struct.action_record** %18, align 8
  store %struct.action_record* %19, %struct.action_record** %8, align 8
  %20 = icmp eq %struct.action_record* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = call %struct.action_record* @xmalloc(i32 12)
  store %struct.action_record* %22, %struct.action_record** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VARRAY_ACTIVE_SIZE(i32 %27)
  %29 = add nsw i32 %28, 1
  %30 = load %struct.action_record*, %struct.action_record** %8, align 8
  %31 = getelementptr inbounds %struct.action_record, %struct.action_record* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.action_record*, %struct.action_record** %8, align 8
  %34 = getelementptr inbounds %struct.action_record, %struct.action_record* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.action_record*, %struct.action_record** %8, align 8
  %37 = getelementptr inbounds %struct.action_record, %struct.action_record* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.action_record*, %struct.action_record** %8, align 8
  %39 = load %struct.action_record**, %struct.action_record*** %7, align 8
  store %struct.action_record* %38, %struct.action_record** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @push_sleb128(i32* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %21
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @VARRAY_ACTIVE_SIZE(i32 %53)
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %48, %21
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @push_sleb128(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %3
  %66 = load %struct.action_record*, %struct.action_record** %8, align 8
  %67 = getelementptr inbounds %struct.action_record, %struct.action_record* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  ret i32 %68
}

declare dso_local i64 @htab_find_slot(i32, %struct.action_record*, i32) #1

declare dso_local %struct.action_record* @xmalloc(i32) #1

declare dso_local i32 @VARRAY_ACTIVE_SIZE(i32) #1

declare dso_local i32 @push_sleb128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
