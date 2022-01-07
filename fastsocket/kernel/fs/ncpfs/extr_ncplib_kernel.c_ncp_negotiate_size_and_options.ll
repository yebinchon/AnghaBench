; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_negotiate_size_and_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_negotiate_size_and_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }

@NCP_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_negotiate_size_and_options(%struct.ncp_server* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ncp_server*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NCP_BLOCK_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @NCP_BLOCK_SIZE, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %20 = call i32 @ncp_init_request(%struct.ncp_server* %19)
  %21 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ncp_add_be16(%struct.ncp_server* %21, i32 %22)
  %24 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ncp_add_byte(%struct.ncp_server* %24, i32 %25)
  %27 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %28 = call i32 @ncp_request(%struct.ncp_server* %27, i32 97)
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %32 = call i32 @ncp_unlock_server(%struct.ncp_server* %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %52

34:                                               ; preds = %18
  %35 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %36 = call i32 @ncp_reply_be16(%struct.ncp_server* %35, i32 0)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @NCP_BLOCK_SIZE, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @min(i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %48 = call i32 @ncp_reply_byte(%struct.ncp_server* %47, i32 4)
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %51 = call i32 @ncp_unlock_server(%struct.ncp_server* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %44, %30
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_be16(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

declare dso_local i32 @ncp_reply_be16(%struct.ncp_server*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ncp_reply_byte(%struct.ncp_server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
