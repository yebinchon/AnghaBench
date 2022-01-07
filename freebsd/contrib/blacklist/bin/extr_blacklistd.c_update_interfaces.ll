; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_update_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_update_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }

@ifas = common dso_local global %struct.ifaddrs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_interfaces() #0 {
  %1 = alloca %struct.ifaddrs*, align 8
  %2 = alloca %struct.ifaddrs*, align 8
  %3 = call i32 @getifaddrs(%struct.ifaddrs** %2)
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %14

6:                                                ; preds = %0
  %7 = load %struct.ifaddrs*, %struct.ifaddrs** @ifas, align 8
  store %struct.ifaddrs* %7, %struct.ifaddrs** %1, align 8
  %8 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  store %struct.ifaddrs* %8, %struct.ifaddrs** @ifas, align 8
  %9 = load %struct.ifaddrs*, %struct.ifaddrs** %1, align 8
  %10 = icmp ne %struct.ifaddrs* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %1, align 8
  %13 = call i32 @freeifaddrs(%struct.ifaddrs* %12)
  br label %14

14:                                               ; preds = %5, %11, %6
  ret void
}

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
