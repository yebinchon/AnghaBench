; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_util.c_dlm_rcom_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_util.c_dlm_rcom_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rcom = type { i8*, i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_rcom_in(%struct.dlm_rcom* %0) #0 {
  %2 = alloca %struct.dlm_rcom*, align 8
  store %struct.dlm_rcom* %0, %struct.dlm_rcom** %2, align 8
  %3 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %3, i32 0, i32 5
  %5 = call i32 @header_in(i32* %4)
  %6 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @le32_to_cpu(i8* %8)
  %10 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @le32_to_cpu(i8* %14)
  %16 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @le64_to_cpu(i8* %20)
  %22 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %25 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @le64_to_cpu(i8* %26)
  %28 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %29 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @le64_to_cpu(i8* %32)
  %34 = load %struct.dlm_rcom*, %struct.dlm_rcom** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  ret void
}

declare dso_local i32 @header_in(i32*) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @le64_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
