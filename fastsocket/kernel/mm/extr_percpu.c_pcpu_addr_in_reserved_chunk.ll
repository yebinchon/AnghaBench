; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_percpu.c_pcpu_addr_in_reserved_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_percpu.c_pcpu_addr_in_reserved_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@pcpu_first_chunk = common dso_local global %struct.TYPE_2__* null, align 8
@pcpu_reserved_chunk_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pcpu_addr_in_reserved_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcpu_addr_in_reserved_chunk(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcpu_first_chunk, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp uge i8* %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @pcpu_reserved_chunk_limit, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = icmp ult i8* %11, %15
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
