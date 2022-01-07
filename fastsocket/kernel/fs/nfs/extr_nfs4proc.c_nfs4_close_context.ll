; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_close_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_close_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_open_context*, i32)* @nfs4_close_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_close_context(%struct.nfs_open_context* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nfs4_close_sync(i32* %16, i32 %19)
  br label %29

21:                                               ; preds = %10
  %22 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nfs4_close_state(i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %9, %21, %13
  ret void
}

declare dso_local i32 @nfs4_close_sync(i32*, i32) #1

declare dso_local i32 @nfs4_close_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
