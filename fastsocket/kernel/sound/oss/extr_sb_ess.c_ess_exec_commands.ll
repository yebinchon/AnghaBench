; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_exec_commands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_exec_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.ess_command = type { i32, i32 }

@AFMT_U8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.ess_command**)* @ess_exec_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ess_exec_commands(%struct.TYPE_4__* %0, %struct.ess_command** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ess_command**, align 8
  %5 = alloca %struct.ess_command*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.ess_command** %1, %struct.ess_command*** %4, align 8
  %6 = load %struct.ess_command**, %struct.ess_command*** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AFMT_U8, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %12, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ess_command*, %struct.ess_command** %6, i64 %20
  %22 = load %struct.ess_command*, %struct.ess_command** %21, align 8
  store %struct.ess_command* %22, %struct.ess_command** %5, align 8
  br label %23

23:                                               ; preds = %28, %2
  %24 = load %struct.ess_command*, %struct.ess_command** %5, align 8
  %25 = getelementptr inbounds %struct.ess_command, %struct.ess_command* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = load %struct.ess_command*, %struct.ess_command** %5, align 8
  %31 = getelementptr inbounds %struct.ess_command, %struct.ess_command* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ess_command*, %struct.ess_command** %5, align 8
  %34 = getelementptr inbounds %struct.ess_command, %struct.ess_command* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ess_write(%struct.TYPE_4__* %29, i32 %32, i32 %35)
  %37 = load %struct.ess_command*, %struct.ess_command** %5, align 8
  %38 = getelementptr inbounds %struct.ess_command, %struct.ess_command* %37, i32 1
  store %struct.ess_command* %38, %struct.ess_command** %5, align 8
  br label %23

39:                                               ; preds = %23
  ret void
}

declare dso_local i32 @ess_write(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
