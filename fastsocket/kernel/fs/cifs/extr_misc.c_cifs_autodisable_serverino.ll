; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_cifs_autodisable_serverino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_cifs_autodisable_serverino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [225 x i8] c"Autodisabling the use of server inode numbers on %s. This server doesn't seem to support them properly. Hardlinks will not be recognized on this mount. Consider mounting with the \22noserverino\22 option to silence this message.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_autodisable_serverino(%struct.cifs_sb_info* %0) #0 {
  %2 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %2, align 8
  %3 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %4 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %13 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %17 = call %struct.TYPE_2__* @cifs_sb_master_tcon(%struct.cifs_sb_info* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
