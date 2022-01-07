; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fib_insert_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fib_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_zone = type { %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.fib_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fn_zone*, %struct.fib_node*)* @fib_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib_insert_node(%struct.fn_zone* %0, %struct.fib_node* %1) #0 {
  %3 = alloca %struct.fn_zone*, align 8
  %4 = alloca %struct.fib_node*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.fn_zone* %0, %struct.fn_zone** %3, align 8
  store %struct.fib_node* %1, %struct.fib_node** %4, align 8
  %6 = load %struct.fn_zone*, %struct.fn_zone** %3, align 8
  %7 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %6, i32 0, i32 0
  %8 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %9 = load %struct.fib_node*, %struct.fib_node** %4, align 8
  %10 = getelementptr inbounds %struct.fib_node, %struct.fib_node* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.fn_zone*, %struct.fn_zone** %3, align 8
  %13 = call i64 @fn_hash(i32 %11, %struct.fn_zone* %12)
  %14 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i64 %13
  store %struct.hlist_head* %14, %struct.hlist_head** %5, align 8
  %15 = load %struct.fib_node*, %struct.fib_node** %4, align 8
  %16 = getelementptr inbounds %struct.fib_node, %struct.fib_node* %15, i32 0, i32 0
  %17 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %18 = call i32 @hlist_add_head(i32* %16, %struct.hlist_head* %17)
  ret void
}

declare dso_local i64 @fn_hash(i32, %struct.fn_zone*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
