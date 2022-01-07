; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_file_downgrade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_file_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateid = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stateid*, i32)* @nfs4_file_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_file_downgrade(%struct.nfs4_stateid* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_stateid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfs4_stateid* %0, %struct.nfs4_stateid** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %3, align 8
  %12 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @nfs4_access_to_omode(i32 %25)
  %27 = call i32 @nfs4_file_put_access(i32 %24, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %3, align 8
  %30 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %29, i32 0, i32 0
  %31 = call i32 @__clear_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %21, %15, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_file_put_access(i32, i32) #1

declare dso_local i32 @nfs4_access_to_omode(i32) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
