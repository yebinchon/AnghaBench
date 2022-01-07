; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_objalloc.c_objalloc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_objalloc.c_objalloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objalloc = type { %struct.objalloc*, i64 }
%struct.objalloc_chunk = type { %struct.objalloc_chunk*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @objalloc_free(%struct.objalloc* %0) #0 {
  %2 = alloca %struct.objalloc*, align 8
  %3 = alloca %struct.objalloc_chunk*, align 8
  %4 = alloca %struct.objalloc_chunk*, align 8
  store %struct.objalloc* %0, %struct.objalloc** %2, align 8
  %5 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %6 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %8, %struct.objalloc_chunk** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %3, align 8
  %11 = icmp ne %struct.objalloc_chunk* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %3, align 8
  %14 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %13, i32 0, i32 0
  %15 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %14, align 8
  store %struct.objalloc_chunk* %15, %struct.objalloc_chunk** %4, align 8
  %16 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %3, align 8
  %17 = call i32 @free(%struct.objalloc_chunk* %16)
  %18 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %4, align 8
  store %struct.objalloc_chunk* %18, %struct.objalloc_chunk** %3, align 8
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %21 = bitcast %struct.objalloc* %20 to %struct.objalloc_chunk*
  %22 = call i32 @free(%struct.objalloc_chunk* %21)
  ret void
}

declare dso_local i32 @free(%struct.objalloc_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
