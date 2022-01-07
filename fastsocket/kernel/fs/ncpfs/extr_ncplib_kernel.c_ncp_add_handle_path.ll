; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_add_handle_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_add_handle_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*, i32, i32, i32, i8*)* @ncp_add_handle_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncp_add_handle_path(%struct.ncp_server* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ncp_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ncp_add_byte(%struct.ncp_server* %11, i32 %12)
  %14 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ncp_add_dword(%struct.ncp_server* %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %21 = call i32 @ncp_add_byte(%struct.ncp_server* %20, i32 1)
  br label %25

22:                                               ; preds = %5
  %23 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %24 = call i32 @ncp_add_byte(%struct.ncp_server* %23, i32 255)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %30 = call i32 @ncp_add_byte(%struct.ncp_server* %29, i32 1)
  %31 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @ncp_add_pstring(%struct.ncp_server* %31, i8* %32)
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %36 = call i32 @ncp_add_byte(%struct.ncp_server* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_dword(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_pstring(%struct.ncp_server*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
