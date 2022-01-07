; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_fsshare.c_restart_mountd.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_fsshare.c_restart_mountd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }

@_PATH_MOUNTDPID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restart_mountd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_mountd() #0 {
  %1 = alloca %struct.pidfh*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @_PATH_MOUNTDPID, align 4
  %4 = call %struct.pidfh* @pidfile_open(i32 %3, i32 384, i32* %2)
  store %struct.pidfh* %4, %struct.pidfh** %1, align 8
  %5 = load %struct.pidfh*, %struct.pidfh** %1, align 8
  %6 = icmp ne %struct.pidfh* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct.pidfh*, %struct.pidfh** %1, align 8
  %9 = call i32 @pidfile_remove(%struct.pidfh* %8)
  br label %19

10:                                               ; preds = %0
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @EEXIST, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SIGHUP, align 4
  %18 = call i32 @kill(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %14, %7
  ret void
}

declare dso_local %struct.pidfh* @pidfile_open(i32, i32, i32*) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
