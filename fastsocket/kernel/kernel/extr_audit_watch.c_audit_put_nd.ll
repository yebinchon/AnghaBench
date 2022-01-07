; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_put_nd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_put_nd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*, %struct.nameidata*)* @audit_put_nd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_put_nd(%struct.nameidata* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.nameidata*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %6 = icmp ne %struct.nameidata* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %10 = call i32 @path_put(i32* %9)
  %11 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %12 = call i32 @kfree(%struct.nameidata* %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %15 = icmp ne %struct.nameidata* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %19 = call i32 @path_put(i32* %18)
  %20 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %21 = call i32 @kfree(%struct.nameidata* %20)
  br label %22

22:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @kfree(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
