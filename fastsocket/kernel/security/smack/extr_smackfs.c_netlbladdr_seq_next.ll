; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smackfs.c_netlbladdr_seq_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smackfs.c_netlbladdr_seq_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.list_head = type { i8* }

@smk_netlbladdr_list = common dso_local global i32 0, align 4
@SEQ_READ_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @netlbladdr_seq_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @netlbladdr_seq_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.list_head*
  store %struct.list_head* %10, %struct.list_head** %8, align 8
  %11 = load %struct.list_head*, %struct.list_head** %8, align 8
  %12 = call i64 @list_is_last(%struct.list_head* %11, i32* @smk_netlbladdr_list)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @SEQ_READ_FINISHED, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  store i8* null, i8** %4, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.list_head*, %struct.list_head** %8, align 8
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

declare dso_local i64 @list_is_last(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
