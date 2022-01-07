; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_list_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_list_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_head* @seq_list_next(i8* %0, %struct.list_head* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.list_head*
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.list_head*, %struct.list_head** %7, align 8
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = icmp eq %struct.list_head* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  %20 = load %struct.list_head*, %struct.list_head** %7, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi %struct.list_head* [ null, %18 ], [ %20, %19 ]
  ret %struct.list_head* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
