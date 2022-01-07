; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_start_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_start_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@immediate_quit = common dso_local global i32 0, align 4
@ocd_desc = common dso_local global i32 0, align 4
@OCD_INIT = common dso_local global i8 0, align 1
@remote_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Truncated response packet from OCD device\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"OCD_INIT:\00", align 1
@OCD_AYT = common dso_local global i32 0, align 4
@OCD_GET_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"[Wiggler version %x.%x, capability 0x%x]\0A\00", align 1
@OCD_FLAG_BDM = common dso_local global i32 0, align 4
@OCD_SET_CTL_FLAGS = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"OCD_SET_CTL_FLAGS:\00", align 1
@stop_pc = common dso_local global i32 0, align 4
@OCD_LOG_FILE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ocd_start_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocd_start_remote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @immediate_quit, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @immediate_quit, align 4
  %15 = load i32, i32* @ocd_desc, align 4
  %16 = call i32 @serial_send_break(i32 %15)
  store i32 80, i32* %8, align 4
  %17 = load i8, i8* @OCD_INIT, align 1
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 2
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %9, align 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %31 = call i32 @ocd_put_packet(i8* %30, i32 4)
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* @remote_timeout, align 4
  %35 = call i8* @ocd_get_packet(i8 zeroext %33, i32* %5, i32 %34)
  store i8* %35, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ocd_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* @OCD_AYT, align 4
  %56 = call i8* @ocd_do_command(i32 %55, i32* %6, i32* %5)
  %57 = load i32, i32* @OCD_GET_VERSION, align 4
  %58 = call i8* @ocd_do_command(i32 %57, i32* %6, i32* %5)
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 16
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %69, %73
  %75 = trunc i32 %74 to i8
  %76 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %61, i8 zeroext %64, i8 zeroext %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @OCD_FLAG_BDM, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %54
  %82 = call i32 (...) @ocd_stop()
  br label %83

83:                                               ; preds = %81, %54
  %84 = load i8, i8* @OCD_SET_CTL_FLAGS, align 1
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %84, i8* %85, align 1
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 2
  store i8 1, i8* %87, align 1
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %89 = call i32 @ocd_put_packet(i8* %88, i32 3)
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = load i32, i32* @remote_timeout, align 4
  %93 = call i8* @ocd_get_packet(i8 zeroext %91, i32* %5, i32 %92)
  store i8* %93, i8** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %83
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ocd_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %98
  %113 = load i32, i32* @immediate_quit, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* @immediate_quit, align 4
  %115 = call i32 (...) @flush_cached_frames()
  %116 = call i32 (...) @registers_changed()
  %117 = call i32 (...) @read_pc()
  store i32 %117, i32* @stop_pc, align 4
  %118 = call i32 (...) @get_selected_frame()
  %119 = call i32 @print_stack_frame(i32 %118, i32 -1, i32 1)
  %120 = load i8, i8* @OCD_LOG_FILE, align 1
  %121 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %120, i8* %121, align 1
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 3, i8* %122, align 1
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %124 = call i32 @ocd_put_packet(i8* %123, i32 2)
  %125 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = load i32, i32* @remote_timeout, align 4
  %128 = call i8* @ocd_get_packet(i8 zeroext %126, i32* %5, i32 %127)
  store i8* %128, i8** %4, align 8
  %129 = load i8, i8* @OCD_LOG_FILE, align 1
  %130 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %129, i8* %130, align 1
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 2, i8* %131, align 1
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %133 = call i32 @ocd_put_packet(i8* %132, i32 2)
  %134 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = load i32, i32* @remote_timeout, align 4
  %137 = call i8* @ocd_get_packet(i8 zeroext %135, i32* %5, i32 %136)
  store i8* %137, i8** %4, align 8
  ret i32 1
}

declare dso_local i32 @serial_send_break(i32) #1

declare dso_local i32 @ocd_put_packet(i8*, i32) #1

declare dso_local i8* @ocd_get_packet(i8 zeroext, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ocd_error(i8*, i32) #1

declare dso_local i8* @ocd_do_command(i32, i32*, i32*) #1

declare dso_local i32 @printf_unfiltered(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ocd_stop(...) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @get_selected_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
