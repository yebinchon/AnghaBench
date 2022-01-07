; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_copy_open_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_copy_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nfs4_state*)* @nfs4_copy_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_copy_open_stateid(i32* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %4, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %9 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %8, i32 0, i32 2
  %10 = call i32 @read_seqbegin(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %13 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %12, i32 0, i32 1
  %14 = call i32 @nfs4_stateid_copy(i32* %11, i32* %13)
  store i32 0, i32* %5, align 4
  %15 = call i32 (...) @smp_rmb()
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @EWOULDBLOCK, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %7
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %28, i32 0, i32 2
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @read_seqretry(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %7, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
