; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_update_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_update_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dirhash = type { i32 }
%struct.autofs_dir_ent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_update_usage(%struct.autofs_dirhash* %0, %struct.autofs_dir_ent* %1) #0 {
  %3 = alloca %struct.autofs_dirhash*, align 8
  %4 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.autofs_dirhash* %0, %struct.autofs_dirhash** %3, align 8
  store %struct.autofs_dir_ent* %1, %struct.autofs_dir_ent** %4, align 8
  %5 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %6 = call i32 @autofs_delete_usage(%struct.autofs_dir_ent* %5)
  %7 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %3, align 8
  %8 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %9 = call i32 @autofs_init_usage(%struct.autofs_dirhash* %7, %struct.autofs_dir_ent* %8)
  ret void
}

declare dso_local i32 @autofs_delete_usage(%struct.autofs_dir_ent*) #1

declare dso_local i32 @autofs_init_usage(%struct.autofs_dirhash*, %struct.autofs_dir_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
