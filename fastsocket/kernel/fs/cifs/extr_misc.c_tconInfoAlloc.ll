; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_tconInfoAlloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_tconInfoAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tconInfoAllocCount = common dso_local global i32 0, align 4
@CifsNew = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_tcon* @tconInfoAlloc() #0 {
  %1 = alloca %struct.cifs_tcon*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.cifs_tcon* @kzalloc(i32 20, i32 %2)
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %1, align 8
  %4 = load %struct.cifs_tcon*, %struct.cifs_tcon** %1, align 8
  %5 = icmp ne %struct.cifs_tcon* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = call i32 @atomic_inc(i32* @tconInfoAllocCount)
  %8 = load i32, i32* @CifsNew, align 4
  %9 = load %struct.cifs_tcon*, %struct.cifs_tcon** %1, align 8
  %10 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %1, align 8
  %12 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %1, align 8
  %16 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %1, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  br label %21

21:                                               ; preds = %6, %0
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %1, align 8
  ret %struct.cifs_tcon* %22
}

declare dso_local %struct.cifs_tcon* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
