; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c___nfs4_file_put_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c___nfs4_file_put_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32* }

@O_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_file*, i32)* @__nfs4_file_put_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfs4_file_put_access(%struct.nfs4_file* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i64 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nfs4_file_put_fd(%struct.nfs4_file* %14, i32 %15)
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %18 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = call i32 @nfs4_file_put_fd(%struct.nfs4_file* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %13
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @nfs4_file_put_fd(%struct.nfs4_file*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
