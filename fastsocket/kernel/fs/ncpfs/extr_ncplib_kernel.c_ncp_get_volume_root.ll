; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_get_volume_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_get_volume_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"ncp_get_volume_root: looking up vol %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"lookup_vol: namespace[%d] = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_get_volume_root(%struct.ncp_server* %0, i8* %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ncp_server*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %17 = call i32 @ncp_init_request(%struct.ncp_server* %16)
  %18 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %19 = call i32 @ncp_add_byte(%struct.ncp_server* %18, i32 22)
  %20 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %21 = call i32 @ncp_add_byte(%struct.ncp_server* %20, i32 0)
  %22 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %23 = call i32 @ncp_add_byte(%struct.ncp_server* %22, i32 0)
  %24 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %25 = call i32 @ncp_add_byte(%struct.ncp_server* %24, i32 0)
  %26 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %27 = call i32 @ncp_add_byte(%struct.ncp_server* %26, i32 0)
  %28 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %29 = call i32 @ncp_add_byte(%struct.ncp_server* %28, i32 0)
  %30 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %31 = call i32 @ncp_add_dword(%struct.ncp_server* %30, i32 0)
  %32 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %33 = call i32 @ncp_add_byte(%struct.ncp_server* %32, i32 255)
  %34 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %35 = call i32 @ncp_add_byte(%struct.ncp_server* %34, i32 1)
  %36 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @ncp_add_pstring(%struct.ncp_server* %36, i8* %37)
  %39 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %40 = call i32 @ncp_request(%struct.ncp_server* %39, i32 87)
  store i32 %40, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %5
  %43 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %44 = call i32 @ncp_unlock_server(%struct.ncp_server* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %73

46:                                               ; preds = %5
  %47 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %48 = call i32 @ncp_reply_dword(%struct.ncp_server* %47, i32 4)
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %52 = call i64 @ncp_reply_byte(%struct.ncp_server* %51, i32 8)
  store i64 %52, i64* %13, align 8
  %53 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %54 = call i32 @ncp_unlock_server(%struct.ncp_server* %53)
  %55 = load i64, i64* %13, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @ncp_get_known_namespace(%struct.ncp_server* %57, i64 %58)
  %60 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %61 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %67 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %46, %42
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_dword(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_pstring(%struct.ncp_server*, i8*) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

declare dso_local i32 @ncp_reply_dword(%struct.ncp_server*, i32) #1

declare dso_local i64 @ncp_reply_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_get_known_namespace(%struct.ncp_server*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
