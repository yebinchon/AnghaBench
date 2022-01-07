; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_get_volume_info_with_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_get_volume_info_with_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }
%struct.ncp_volume_info = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@NCP_VOLNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ncpfs: volume name too long: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_get_volume_info_with_number(%struct.ncp_server* %0, i32 %1, %struct.ncp_volume_info* %2) #0 {
  %4 = alloca %struct.ncp_server*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ncp_volume_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ncp_volume_info* %2, %struct.ncp_volume_info** %6, align 8
  %9 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %10 = call i32 @ncp_init_request_s(%struct.ncp_server* %9, i32 44)
  %11 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ncp_add_byte(%struct.ncp_server* %11, i32 %12)
  %14 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %15 = call i32 @ncp_request(%struct.ncp_server* %14, i32 22)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %68

18:                                               ; preds = %3
  %19 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %20 = call i8* @ncp_reply_dword_lh(%struct.ncp_server* %19, i32 0)
  %21 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %22 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %24 = call i8* @ncp_reply_dword_lh(%struct.ncp_server* %23, i32 4)
  %25 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %26 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %28 = call i8* @ncp_reply_dword_lh(%struct.ncp_server* %27, i32 8)
  %29 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %30 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %32 = call i8* @ncp_reply_dword_lh(%struct.ncp_server* %31, i32 12)
  %33 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %34 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %36 = call i8* @ncp_reply_dword_lh(%struct.ncp_server* %35, i32 16)
  %37 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %38 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %40 = call i8* @ncp_reply_dword_lh(%struct.ncp_server* %39, i32 20)
  %41 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %42 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %44 = call i8* @ncp_reply_byte(%struct.ncp_server* %43, i32 28)
  %45 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %46 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %48 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %47, i32 0, i32 0
  %49 = call i32 @memset(i32* %48, i32 0, i32 4)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %53 = call i8* @ncp_reply_byte(%struct.ncp_server* %52, i32 29)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @NCP_VOLNAME_LEN, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %18
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %68

61:                                               ; preds = %18
  %62 = load %struct.ncp_volume_info*, %struct.ncp_volume_info** %6, align 8
  %63 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %62, i32 0, i32 0
  %64 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %65 = call i32 @ncp_reply_data(%struct.ncp_server* %64, i32 30)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i32* %63, i32 %65, i32 %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %61, %58, %17
  %69 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %70 = call i32 @ncp_unlock_server(%struct.ncp_server* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @ncp_init_request_s(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i8* @ncp_reply_dword_lh(%struct.ncp_server*, i32) #1

declare dso_local i8* @ncp_reply_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ncp_reply_data(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
