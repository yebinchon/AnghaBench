; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mbcache.c___mb_cache_entry_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mbcache.c___mb_cache_entry_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb_cache_entry = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mb_cache_entry*)* @__mb_cache_entry_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mb_cache_entry_unhash(%struct.mb_cache_entry* %0) #0 {
  %2 = alloca %struct.mb_cache_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.mb_cache_entry* %0, %struct.mb_cache_entry** %2, align 8
  %4 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %2, align 8
  %5 = call i64 @__mb_cache_entry_is_hashed(%struct.mb_cache_entry* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %2, align 8
  %9 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %8, i32 0, i32 2
  %10 = call i32 @list_del_init(i32* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %27, %7
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %2, align 8
  %14 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mb_cache_indexes(i32 %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %2, align 8
  %20 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %11

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i64 @__mb_cache_entry_is_hashed(%struct.mb_cache_entry*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mb_cache_indexes(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
