; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_clientmgr.c_snd_seq_client_use_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_clientmgr.c_snd_seq_client_use_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }

@SNDRV_SEQ_MAX_CLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Seq: oops. Trying to get pointer to client %d\0A\00", align 1
@clients_lock = common dso_local global i32 0, align 4
@clienttablock = common dso_local global i64* null, align 8
@SNDRV_CARDS = common dso_local global i32 0, align 4
@SNDRV_SEQ_CLIENTS_PER_CARD = common dso_local global i32 0, align 4
@SNDRV_SEQ_DYNAMIC_CLIENTS_BEGIN = common dso_local global i32 0, align 4
@SNDRV_SEQ_GLOBAL_CLIENTS = common dso_local global i32 0, align 4
@seq_client_load = common dso_local global i32* null, align 8
@snd_ecards_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %0) #0 {
  %2 = alloca %struct.snd_seq_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_seq_client*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SNDRV_SEQ_MAX_CLIENTS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @snd_printd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.snd_seq_client* null, %struct.snd_seq_client** %2, align 8
  br label %43

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @clients_lock, i64 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.snd_seq_client* @clientptr(i32 %18)
  store %struct.snd_seq_client* %19, %struct.snd_seq_client** %5, align 8
  %20 = load %struct.snd_seq_client*, %struct.snd_seq_client** %5, align 8
  %21 = icmp ne %struct.snd_seq_client* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %36

23:                                               ; preds = %15
  %24 = load i64*, i64** @clienttablock, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @clients_lock, i64 %31)
  store %struct.snd_seq_client* null, %struct.snd_seq_client** %2, align 8
  br label %43

33:                                               ; preds = %23
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @clients_lock, i64 %34)
  store %struct.snd_seq_client* null, %struct.snd_seq_client** %2, align 8
  br label %43

36:                                               ; preds = %22
  %37 = load %struct.snd_seq_client*, %struct.snd_seq_client** %5, align 8
  %38 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %37, i32 0, i32 0
  %39 = call i32 @snd_use_lock_use(i32* %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @clients_lock, i64 %40)
  %42 = load %struct.snd_seq_client*, %struct.snd_seq_client** %5, align 8
  store %struct.snd_seq_client* %42, %struct.snd_seq_client** %2, align 8
  br label %43

43:                                               ; preds = %36, %33, %30, %12
  %44 = load %struct.snd_seq_client*, %struct.snd_seq_client** %2, align 8
  ret %struct.snd_seq_client* %44
}

declare dso_local i32 @snd_printd(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.snd_seq_client* @clientptr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_use_lock_use(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
