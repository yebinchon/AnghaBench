; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c___fscache_wait_on_page_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c___fscache_wait_on_page_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fscache_wait_on_page_write(%struct.fscache_cookie* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.fscache_cookie*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %7 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %6, i32 0, i32 0
  %8 = call i32* @bit_waitqueue(i32* %7, i32 0)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @__fscache_check_page_write(%struct.fscache_cookie* %11, %struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @wait_event(i32 %10, i32 %16)
  ret void
}

declare dso_local i32* @bit_waitqueue(i32*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @__fscache_check_page_write(%struct.fscache_cookie*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
