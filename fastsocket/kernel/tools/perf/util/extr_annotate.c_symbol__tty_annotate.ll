; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__tty_annotate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__tty_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.symbol = type { i32 }
%struct.map = type { %struct.dso* }
%struct.dso = type { i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol__tty_annotate(%struct.symbol* %0, %struct.map* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca %struct.map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dso*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.rb_root, align 4
  %19 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %9, align 8
  store %struct.map* %1, %struct.map** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.map*, %struct.map** %10, align 8
  %21 = getelementptr inbounds %struct.map, %struct.map* %20, i32 0, i32 0
  %22 = load %struct.dso*, %struct.dso** %21, align 8
  store %struct.dso* %22, %struct.dso** %16, align 8
  %23 = load %struct.dso*, %struct.dso** %16, align 8
  %24 = getelementptr inbounds %struct.dso, %struct.dso* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %17, align 8
  %26 = bitcast %struct.rb_root* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  %27 = load %struct.symbol*, %struct.symbol** %9, align 8
  %28 = load %struct.map*, %struct.map** %10, align 8
  %29 = call i64 @symbol__annotate(%struct.symbol* %27, %struct.map* %28, i32 0)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %67

32:                                               ; preds = %7
  %33 = load %struct.symbol*, %struct.symbol** %9, align 8
  %34 = call i32 @symbol__size(%struct.symbol* %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.symbol*, %struct.symbol** %9, align 8
  %39 = load %struct.map*, %struct.map** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = call i32 @symbol__get_source_line(%struct.symbol* %38, %struct.map* %39, i32 %40, %struct.rb_root* %18, i32 %41, i8* %42)
  %44 = load i8*, i8** %17, align 8
  %45 = call i32 @print_summary(%struct.rb_root* %18, i8* %44)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load %struct.symbol*, %struct.symbol** %9, align 8
  %48 = load %struct.map*, %struct.map** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @symbol__annotate_printf(%struct.symbol* %47, %struct.map* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.symbol*, %struct.symbol** %9, align 8
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @symbol__free_source_line(%struct.symbol* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %46
  %61 = load %struct.symbol*, %struct.symbol** %9, align 8
  %62 = call %struct.TYPE_4__* @symbol__annotation(%struct.symbol* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @disasm__purge(i32* %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %31
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @symbol__annotate(%struct.symbol*, %struct.map*, i32) #2

declare dso_local i32 @symbol__size(%struct.symbol*) #2

declare dso_local i32 @symbol__get_source_line(%struct.symbol*, %struct.map*, i32, %struct.rb_root*, i32, i8*) #2

declare dso_local i32 @print_summary(%struct.rb_root*, i8*) #2

declare dso_local i32 @symbol__annotate_printf(%struct.symbol*, %struct.map*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @symbol__free_source_line(%struct.symbol*, i32) #2

declare dso_local i32 @disasm__purge(i32*) #2

declare dso_local %struct.TYPE_4__* @symbol__annotation(%struct.symbol*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
