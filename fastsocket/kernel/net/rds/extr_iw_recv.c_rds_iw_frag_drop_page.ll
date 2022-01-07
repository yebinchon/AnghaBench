; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_frag_drop_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_frag_drop_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_page_frag = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"frag %p page %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_page_frag*)* @rds_iw_frag_drop_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_frag_drop_page(%struct.rds_page_frag* %0) #0 {
  %2 = alloca %struct.rds_page_frag*, align 8
  store %struct.rds_page_frag* %0, %struct.rds_page_frag** %2, align 8
  %3 = load %struct.rds_page_frag*, %struct.rds_page_frag** %2, align 8
  %4 = load %struct.rds_page_frag*, %struct.rds_page_frag** %2, align 8
  %5 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.rds_page_frag* %3, i32* %6)
  %8 = load %struct.rds_page_frag*, %struct.rds_page_frag** %2, align 8
  %9 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @__free_page(i32* %10)
  %12 = load %struct.rds_page_frag*, %struct.rds_page_frag** %2, align 8
  %13 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_page_frag*, i32*) #1

declare dso_local i32 @__free_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
