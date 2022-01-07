; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_som.c_load_som_binary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_som.c_load_som_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.linux_binprm = type { i64, i32, i64 }
%struct.pt_regs = type { i32 }
%struct.som_hdr = type { i32, i32 }
%struct.som_exec_auxhdr = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SOM_PAGESIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PF_FORKNOEXEC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@PER_HPUX = common dso_local global i32 0, align 4
@som_format = common dso_local global i32 0, align 4
@STACK_TOP = common dso_local global i32 0, align 4
@EXSTACK_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.pt_regs*)* @load_som_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_som_binary(%struct.linux_binprm* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.som_hdr*, align 8
  %10 = alloca %struct.som_exec_auxhdr*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %11 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %12 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.som_hdr*
  store %struct.som_hdr* %14, %struct.som_hdr** %9, align 8
  %15 = load %struct.som_hdr*, %struct.som_hdr** %9, align 8
  %16 = call i32 @check_som_header(%struct.som_hdr* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %126

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.som_hdr*, %struct.som_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SOM_PAGESIZE, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %126

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.som_exec_auxhdr* @kmalloc(i32 %31, i32 %32)
  store %struct.som_exec_auxhdr* %33, %struct.som_exec_auxhdr** %10, align 8
  %34 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %10, align 8
  %35 = icmp ne %struct.som_exec_auxhdr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %126

37:                                               ; preds = %30
  %38 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %39 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.som_hdr*, %struct.som_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %10, align 8
  %45 = bitcast %struct.som_exec_auxhdr* %44 to i8*
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @kernel_read(i32 %40, i32 %43, i8* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %123

58:                                               ; preds = %37
  %59 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %60 = call i32 @flush_old_exec(%struct.linux_binprm* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %123

64:                                               ; preds = %58
  %65 = load i32, i32* @PF_FORKNOEXEC, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @PER_HPUX, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %75 = call i32 @setup_new_exec(%struct.linux_binprm* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 -1073741824, i32* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 -2147483648, i32* %81, align 4
  %82 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %83 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %10, align 8
  %86 = call i32 @map_som_binary(i32 %84, %struct.som_exec_auxhdr* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %64
  br label %123

90:                                               ; preds = %64
  %91 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %10, align 8
  %92 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %8, align 8
  %94 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %10, align 8
  %95 = call i32 @kfree(%struct.som_exec_auxhdr* %94)
  %96 = call i32 @set_binfmt(i32* @som_format)
  %97 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %98 = call i32 @install_exec_creds(%struct.linux_binprm* %97)
  %99 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %100 = load i32, i32* @STACK_TOP, align 4
  %101 = load i32, i32* @EXSTACK_DEFAULT, align 4
  %102 = call i32 @setup_arg_pages(%struct.linux_binprm* %99, i32 %100, i32 %101)
  %103 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %104 = call i32 @create_som_tables(%struct.linux_binprm* %103)
  %105 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %106 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = call i32 @map_hpux_gateway_page(%struct.TYPE_6__* %112, %struct.TYPE_7__* %115)
  %117 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %120 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @start_thread_som(%struct.pt_regs* %117, i64 %118, i64 %121)
  store i32 0, i32* %3, align 4
  br label %128

123:                                              ; preds = %89, %63, %57
  %124 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %10, align 8
  %125 = call i32 @kfree(%struct.som_exec_auxhdr* %124)
  br label %126

126:                                              ; preds = %123, %36, %29, %19
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %90
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @check_som_header(%struct.som_hdr*) #1

declare dso_local %struct.som_exec_auxhdr* @kmalloc(i32, i32) #1

declare dso_local i32 @kernel_read(i32, i32, i8*, i32) #1

declare dso_local i32 @flush_old_exec(%struct.linux_binprm*) #1

declare dso_local i32 @setup_new_exec(%struct.linux_binprm*) #1

declare dso_local i32 @map_som_binary(i32, %struct.som_exec_auxhdr*) #1

declare dso_local i32 @kfree(%struct.som_exec_auxhdr*) #1

declare dso_local i32 @set_binfmt(i32*) #1

declare dso_local i32 @install_exec_creds(%struct.linux_binprm*) #1

declare dso_local i32 @setup_arg_pages(%struct.linux_binprm*, i32, i32) #1

declare dso_local i32 @create_som_tables(%struct.linux_binprm*) #1

declare dso_local i32 @map_hpux_gateway_page(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @start_thread_som(%struct.pt_regs*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
