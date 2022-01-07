; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mips.c_mips_vxworks_bfd_reloc_name_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mips.c_mips_vxworks_bfd_reloc_name_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@mips_vxworks_copy_howto_rela = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@mips_vxworks_jump_slot_howto_rela = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i8*)* @mips_vxworks_bfd_reloc_name_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @mips_vxworks_bfd_reloc_name_lookup(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_vxworks_copy_howto_rela, i32 0, i32 0), align 4
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcasecmp(i32 %6, i8* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_6__* @mips_vxworks_copy_howto_rela, %struct.TYPE_6__** %3, align 8
  br label %21

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_vxworks_jump_slot_howto_rela, i32 0, i32 0), align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcasecmp(i32 %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.TYPE_6__* @mips_vxworks_jump_slot_howto_rela, %struct.TYPE_6__** %3, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.TYPE_6__* @bfd_elf32_bfd_reloc_name_lookup(i32* %18, i8* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  br label %21

21:                                               ; preds = %17, %16, %10
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %22
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @bfd_elf32_bfd_reloc_name_lookup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
