; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_attribs.c_init_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_attribs.c_init_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@lang_hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@attribute_tables = common dso_local global %struct.TYPE_8__** null, align 8
@targetm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@empty_attribute_table = common dso_local global %struct.TYPE_8__* null, align 8
@attributes_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_attributes() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 2), align 8
  %3 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %3, i64 0
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 1), align 8
  %6 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %6, i64 1
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %9, i64 2
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @targetm, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %12, i64 3
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %13, align 8
  store i64 0, i64* %1, align 8
  br label %14

14:                                               ; preds = %31, %0
  %15 = load i64, i64* %1, align 8
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_8__** %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %21 = load i64, i64* %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @empty_attribute_table, align 8
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @attribute_tables, align 8
  %28 = load i64, i64* %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %29, align 8
  br label %30

30:                                               ; preds = %25, %19
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %1, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %1, align 8
  br label %14

34:                                               ; preds = %14
  store i32 1, i32* @attributes_initialized, align 4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
