; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_free_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_free_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_alias = type { i32* }
%struct.fib_node = type { %struct.fib_alias }

@fn_alias_kmem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib_alias*, %struct.fib_node*)* @fn_free_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_free_alias(%struct.fib_alias* %0, %struct.fib_node* %1) #0 {
  %3 = alloca %struct.fib_alias*, align 8
  %4 = alloca %struct.fib_node*, align 8
  store %struct.fib_alias* %0, %struct.fib_alias** %3, align 8
  store %struct.fib_node* %1, %struct.fib_node** %4, align 8
  %5 = load %struct.fib_alias*, %struct.fib_alias** %3, align 8
  %6 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @fib_release_info(i32* %7)
  %9 = load %struct.fib_alias*, %struct.fib_alias** %3, align 8
  %10 = load %struct.fib_node*, %struct.fib_node** %4, align 8
  %11 = getelementptr inbounds %struct.fib_node, %struct.fib_node* %10, i32 0, i32 0
  %12 = icmp eq %struct.fib_alias* %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.fib_alias*, %struct.fib_alias** %3, align 8
  %15 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @fn_alias_kmem, align 4
  %18 = load %struct.fib_alias*, %struct.fib_alias** %3, align 8
  %19 = call i32 @kmem_cache_free(i32 %17, %struct.fib_alias* %18)
  br label %20

20:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @fib_release_info(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fib_alias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
