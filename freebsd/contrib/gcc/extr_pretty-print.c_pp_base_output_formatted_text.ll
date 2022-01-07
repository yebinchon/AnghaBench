; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_base_output_formatted_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_base_output_formatted_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.chunk_info*, i32, i32* }
%struct.chunk_info = type { i8**, %struct.chunk_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_base_output_formatted_text(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.chunk_info*, align 8
  %6 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_3__* @pp_buffer(i32* %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.chunk_info*, %struct.chunk_info** %10, align 8
  store %struct.chunk_info* %11, %struct.chunk_info** %5, align 8
  %12 = load %struct.chunk_info*, %struct.chunk_info** %5, align 8
  %13 = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = icmp eq i32* %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %44, %1
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load i32*, i32** %2, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @pp_string(i32* %37, i8* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.chunk_info*, %struct.chunk_info** %5, align 8
  %49 = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %48, i32 0, i32 1
  %50 = load %struct.chunk_info*, %struct.chunk_info** %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store %struct.chunk_info* %50, %struct.chunk_info** %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.chunk_info*, %struct.chunk_info** %5, align 8
  %56 = call i32 @obstack_free(i32* %54, %struct.chunk_info* %55)
  ret void
}

declare dso_local %struct.TYPE_3__* @pp_buffer(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @obstack_free(i32*, %struct.chunk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
