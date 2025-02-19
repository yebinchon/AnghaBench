; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_write_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_write_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_write_kernel(%struct.ncp_server* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.ncp_server*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %15 = call i32 @ncp_init_request(%struct.ncp_server* %14)
  %16 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %17 = call i32 @ncp_add_byte(%struct.ncp_server* %16, i32 0)
  %18 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @ncp_add_mem(%struct.ncp_server* %18, i8* %19, i32 6)
  %21 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ncp_add_be32(%struct.ncp_server* %21, i32 %22)
  %24 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @ncp_add_be16(%struct.ncp_server* %24, i32 %25)
  %27 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ncp_add_mem(%struct.ncp_server* %27, i8* %28, i32 %29)
  %31 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %32 = call i32 @ncp_request(%struct.ncp_server* %31, i32 73)
  store i32 %32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %6
  %38 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %39 = call i32 @ncp_unlock_server(%struct.ncp_server* %38)
  %40 = load i32, i32* %13, align 4
  ret i32 %40
}

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_mem(%struct.ncp_server*, i8*, i32) #1

declare dso_local i32 @ncp_add_be32(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_be16(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
