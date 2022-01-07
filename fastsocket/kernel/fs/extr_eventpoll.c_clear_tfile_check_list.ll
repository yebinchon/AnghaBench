; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_clear_tfile_check_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_clear_tfile_check_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfile_check = type { %struct.tfile_check*, i64 }

@base_tfile_check = common dso_local global %struct.tfile_check zeroinitializer, align 8
@current_tfile_check = common dso_local global %struct.tfile_check* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_tfile_check_list() #0 {
  %1 = alloca %struct.tfile_check*, align 8
  %2 = alloca %struct.tfile_check*, align 8
  %3 = load %struct.tfile_check*, %struct.tfile_check** getelementptr inbounds (%struct.tfile_check, %struct.tfile_check* @base_tfile_check, i32 0, i32 0), align 8
  store %struct.tfile_check* %3, %struct.tfile_check** %1, align 8
  store %struct.tfile_check* null, %struct.tfile_check** getelementptr inbounds (%struct.tfile_check, %struct.tfile_check* @base_tfile_check, i32 0, i32 0), align 8
  %4 = call i32 @clear_added_flag(%struct.tfile_check* @base_tfile_check)
  store i64 0, i64* getelementptr inbounds (%struct.tfile_check, %struct.tfile_check* @base_tfile_check, i32 0, i32 1), align 8
  br label %5

5:                                                ; preds = %8, %0
  %6 = load %struct.tfile_check*, %struct.tfile_check** %1, align 8
  %7 = icmp ne %struct.tfile_check* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct.tfile_check*, %struct.tfile_check** %1, align 8
  %10 = call i32 @clear_added_flag(%struct.tfile_check* %9)
  %11 = load %struct.tfile_check*, %struct.tfile_check** %1, align 8
  store %struct.tfile_check* %11, %struct.tfile_check** %2, align 8
  %12 = load %struct.tfile_check*, %struct.tfile_check** %1, align 8
  %13 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %12, i32 0, i32 0
  %14 = load %struct.tfile_check*, %struct.tfile_check** %13, align 8
  store %struct.tfile_check* %14, %struct.tfile_check** %1, align 8
  %15 = load %struct.tfile_check*, %struct.tfile_check** %2, align 8
  %16 = call i32 @kfree(%struct.tfile_check* %15)
  br label %5

17:                                               ; preds = %5
  store %struct.tfile_check* @base_tfile_check, %struct.tfile_check** @current_tfile_check, align 8
  ret void
}

declare dso_local i32 @clear_added_flag(%struct.tfile_check*) #1

declare dso_local i32 @kfree(%struct.tfile_check*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
