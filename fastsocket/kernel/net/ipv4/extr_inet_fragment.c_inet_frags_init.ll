; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frags_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frags_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frags = type { %struct.TYPE_3__, i64, i64, i32, i32* }
%struct.TYPE_3__ = type { i64 }

@INETFRAGS_HASHSZ = common dso_local global i32 0, align 4
@num_physpages = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@inet_frag_secret_rebuild = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frags_init(%struct.inet_frags* %0) #0 {
  %2 = alloca %struct.inet_frags*, align 8
  %3 = alloca i32, align 4
  store %struct.inet_frags* %0, %struct.inet_frags** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @INETFRAGS_HASHSZ, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %10 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @INIT_HLIST_HEAD(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %21 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %20, i32 0, i32 3
  %22 = call i32 @rwlock_init(i32* %21)
  %23 = load i32, i32* @num_physpages, align 4
  %24 = load i32, i32* @num_physpages, align 4
  %25 = ashr i32 %24, 7
  %26 = xor i32 %23, %25
  %27 = load i32, i32* @jiffies, align 4
  %28 = load i32, i32* @jiffies, align 4
  %29 = ashr i32 %28, 6
  %30 = xor i32 %27, %29
  %31 = xor i32 %26, %30
  %32 = sext i32 %31 to i64
  %33 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %34 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %36 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %35, i32 0, i32 0
  %37 = load i32, i32* @inet_frag_secret_rebuild, align 4
  %38 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %39 = ptrtoint %struct.inet_frags* %38 to i64
  %40 = call i32 @setup_timer(%struct.TYPE_3__* %36, i32 %37, i64 %39)
  %41 = load i32, i32* @jiffies, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %44 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %48 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %51 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %50, i32 0, i32 0
  %52 = call i32 @add_timer(%struct.TYPE_3__* %51)
  ret void
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @setup_timer(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
