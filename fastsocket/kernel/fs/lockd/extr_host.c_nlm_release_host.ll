; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_release_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_release_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"lockd: release host %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_release_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %3 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %4 = icmp ne %struct.nlm_host* %3, null
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %7 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %11 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %10, i32 0, i32 3
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %17 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %16, i32 0, i32 3
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %5
  %21 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %22 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %21, i32 0, i32 2
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %29 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %28, i32 0, i32 1
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %36 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %35, i32 0, i32 0
  %37 = call i32 @list_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  br label %42

42:                                               ; preds = %20, %5
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
