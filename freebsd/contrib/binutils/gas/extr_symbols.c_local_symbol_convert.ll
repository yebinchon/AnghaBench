; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_local_symbol_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_local_symbol_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.local_symbol = type { i32, i32, i32, i32* }

@local_symbol_conversion_count = common dso_local global i32 0, align 4
@local_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.local_symbol*)* @local_symbol_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @local_symbol_convert(%struct.local_symbol* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.local_symbol*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.local_symbol* %0, %struct.local_symbol** %3, align 8
  %5 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %6 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %12 = call i64 @local_symbol_converted_p(%struct.local_symbol* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %16 = call %struct.TYPE_8__* @local_symbol_get_real_symbol(%struct.local_symbol* %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %2, align 8
  br label %54

17:                                               ; preds = %1
  %18 = load i32, i32* @local_symbol_conversion_count, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @local_symbol_conversion_count, align 4
  %20 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %21 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %24 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %27 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %30 = call i32 @local_symbol_get_frag(%struct.local_symbol* %29)
  %31 = call %struct.TYPE_8__* @symbol_new(i32 %22, i32 %25, i32 %28, i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  %32 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %33 = call i64 @local_symbol_resolved_p(%struct.local_symbol* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %17
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = call i32 @symbol_table_insert(%struct.TYPE_8__* %41)
  %43 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %44 = call i32 @local_symbol_mark_converted(%struct.local_symbol* %43)
  %45 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @local_symbol_set_real_symbol(%struct.local_symbol* %45, %struct.TYPE_8__* %46)
  %48 = load i32, i32* @local_hash, align 4
  %49 = load %struct.local_symbol*, %struct.local_symbol** %3, align 8
  %50 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hash_jam(i32 %48, i32 %51, i32* null)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %2, align 8
  br label %54

54:                                               ; preds = %38, %14
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @local_symbol_converted_p(%struct.local_symbol*) #1

declare dso_local %struct.TYPE_8__* @local_symbol_get_real_symbol(%struct.local_symbol*) #1

declare dso_local %struct.TYPE_8__* @symbol_new(i32, i32, i32, i32) #1

declare dso_local i32 @local_symbol_get_frag(%struct.local_symbol*) #1

declare dso_local i64 @local_symbol_resolved_p(%struct.local_symbol*) #1

declare dso_local i32 @symbol_table_insert(%struct.TYPE_8__*) #1

declare dso_local i32 @local_symbol_mark_converted(%struct.local_symbol*) #1

declare dso_local i32 @local_symbol_set_real_symbol(%struct.local_symbol*, %struct.TYPE_8__*) #1

declare dso_local i32 @hash_jam(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
