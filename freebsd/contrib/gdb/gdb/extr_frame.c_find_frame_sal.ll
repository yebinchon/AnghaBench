; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_find_frame_sal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_find_frame_sal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtab_and_line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_frame_sal(%struct.frame_info* %0, %struct.symtab_and_line* %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.symtab_and_line*, align 8
  %5 = alloca %struct.symtab_and_line, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store %struct.symtab_and_line* %1, %struct.symtab_and_line** %4, align 8
  %6 = load %struct.symtab_and_line*, %struct.symtab_and_line** %4, align 8
  %7 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %8 = call i32 @get_frame_pc(%struct.frame_info* %7)
  %9 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %10 = call i32 @pc_notcurrent(%struct.frame_info* %9)
  %11 = call i32 @find_pc_line(i32 %8, i32 %10)
  %12 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = bitcast %struct.symtab_and_line* %6 to i8*
  %14 = bitcast %struct.symtab_and_line* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  ret void
}

declare dso_local i32 @find_pc_line(i32, i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @pc_notcurrent(%struct.frame_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
