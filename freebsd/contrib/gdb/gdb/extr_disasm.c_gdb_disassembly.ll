; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_gdb_disassembly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_gdb_disassembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.ui_stream = type { i32 }
%struct.cleanup = type { i32 }
%struct.disassemble_info = type { i32 }
%struct.symtab = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_disassembly(%struct.ui_out* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ui_out*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ui_stream*, align 8
  %16 = alloca %struct.cleanup*, align 8
  %17 = alloca %struct.disassemble_info, align 4
  %18 = alloca %struct.symtab*, align 8
  %19 = alloca %struct.linetable_entry*, align 8
  %20 = alloca i32, align 4
  store %struct.ui_out* %0, %struct.ui_out** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load %struct.ui_out*, %struct.ui_out** %8, align 8
  %22 = call %struct.ui_stream* @ui_out_stream_new(%struct.ui_out* %21)
  store %struct.ui_stream* %22, %struct.ui_stream** %15, align 8
  %23 = load %struct.ui_stream*, %struct.ui_stream** %15, align 8
  %24 = call %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream* %23)
  store %struct.cleanup* %24, %struct.cleanup** %16, align 8
  %25 = load i32, i32* @current_gdbarch, align 4
  %26 = load %struct.ui_stream*, %struct.ui_stream** %15, align 8
  %27 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gdb_disassemble_info(i32 %25, i32 %28)
  %30 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %17, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  store %struct.symtab* null, %struct.symtab** %18, align 8
  store %struct.linetable_entry* null, %struct.linetable_entry** %19, align 8
  store i32 -1, i32* %20, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.symtab* @find_pc_symtab(i32 %31)
  store %struct.symtab* %32, %struct.symtab** %18, align 8
  %33 = load %struct.symtab*, %struct.symtab** %18, align 8
  %34 = icmp ne %struct.symtab* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %7
  %36 = load %struct.symtab*, %struct.symtab** %18, align 8
  %37 = getelementptr inbounds %struct.symtab, %struct.symtab* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.symtab*, %struct.symtab** %18, align 8
  %42 = getelementptr inbounds %struct.symtab, %struct.symtab* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.linetable_entry*, %struct.linetable_entry** %44, align 8
  store %struct.linetable_entry* %45, %struct.linetable_entry** %19, align 8
  %46 = load %struct.symtab*, %struct.symtab** %18, align 8
  %47 = getelementptr inbounds %struct.symtab, %struct.symtab* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %40, %35, %7
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %20, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.symtab*, %struct.symtab** %18, align 8
  %59 = icmp eq %struct.symtab* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.symtab*, %struct.symtab** %18, align 8
  %62 = getelementptr inbounds %struct.symtab, %struct.symtab* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp eq %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60, %57, %54, %51
  %66 = load %struct.ui_out*, %struct.ui_out** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.ui_stream*, %struct.ui_stream** %15, align 8
  %71 = call i32 @do_assembly_only(%struct.ui_out* %66, %struct.disassemble_info* %17, i32 %67, i32 %68, i32 %69, %struct.ui_stream* %70)
  br label %86

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.ui_out*, %struct.ui_out** %8, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load %struct.linetable_entry*, %struct.linetable_entry** %19, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.symtab*, %struct.symtab** %18, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.ui_stream*, %struct.ui_stream** %15, align 8
  %84 = call i32 @do_mixed_source_and_assembly(%struct.ui_out* %76, %struct.disassemble_info* %17, i32 %77, %struct.linetable_entry* %78, i32 %79, i32 %80, %struct.symtab* %81, i32 %82, %struct.ui_stream* %83)
  br label %85

85:                                               ; preds = %75, %72
  br label %86

86:                                               ; preds = %85, %65
  %87 = load %struct.cleanup*, %struct.cleanup** %16, align 8
  %88 = call i32 @do_cleanups(%struct.cleanup* %87)
  %89 = load i32, i32* @gdb_stdout, align 4
  %90 = call i32 @gdb_flush(i32 %89)
  ret void
}

declare dso_local %struct.ui_stream* @ui_out_stream_new(%struct.ui_out*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream*) #1

declare dso_local i32 @gdb_disassemble_info(i32, i32) #1

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @do_assembly_only(%struct.ui_out*, %struct.disassemble_info*, i32, i32, i32, %struct.ui_stream*) #1

declare dso_local i32 @do_mixed_source_and_assembly(%struct.ui_out*, %struct.disassemble_info*, i32, %struct.linetable_entry*, i32, i32, %struct.symtab*, i32, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
