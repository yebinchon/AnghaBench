; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_free_format_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_free_format_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_field = type { %struct.format_field*, %struct.format_field*, %struct.format_field* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_field*)* @free_format_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_format_fields(%struct.format_field* %0) #0 {
  %2 = alloca %struct.format_field*, align 8
  %3 = alloca %struct.format_field*, align 8
  store %struct.format_field* %0, %struct.format_field** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.format_field*, %struct.format_field** %2, align 8
  %6 = icmp ne %struct.format_field* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.format_field*, %struct.format_field** %2, align 8
  %9 = getelementptr inbounds %struct.format_field, %struct.format_field* %8, i32 0, i32 2
  %10 = load %struct.format_field*, %struct.format_field** %9, align 8
  store %struct.format_field* %10, %struct.format_field** %3, align 8
  %11 = load %struct.format_field*, %struct.format_field** %2, align 8
  %12 = getelementptr inbounds %struct.format_field, %struct.format_field* %11, i32 0, i32 1
  %13 = load %struct.format_field*, %struct.format_field** %12, align 8
  %14 = call i32 @free(%struct.format_field* %13)
  %15 = load %struct.format_field*, %struct.format_field** %2, align 8
  %16 = getelementptr inbounds %struct.format_field, %struct.format_field* %15, i32 0, i32 0
  %17 = load %struct.format_field*, %struct.format_field** %16, align 8
  %18 = call i32 @free(%struct.format_field* %17)
  %19 = load %struct.format_field*, %struct.format_field** %2, align 8
  %20 = call i32 @free(%struct.format_field* %19)
  %21 = load %struct.format_field*, %struct.format_field** %3, align 8
  store %struct.format_field* %21, %struct.format_field** %2, align 8
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.format_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
