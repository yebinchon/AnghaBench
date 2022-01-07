; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1430 x i8] c"\0AHPFS filesystem options:\0A      help              do not mount and display this text\0A      uid=xxx           set uid of files that don't have uid specified in eas\0A      gid=xxx           set gid of files that don't have gid specified in eas\0A      umask=xxx         set mode of files that don't have mode specified in eas\0A      case=lower        lowercase all files\0A      case=asis         do not lowercase files (default)\0A      conv=binary       do not convert CR/LF -> LF (default)\0A      conv=auto         convert only files with known text extensions\0A      conv=text         convert all files\0A      check=none        no fs checks - kernel may crash on corrupted filesystem\0A      check=normal      do some checks - it should not crash (default)\0A      check=strict      do extra time-consuming checks, used for debugging\0A      errors=continue   continue on errors\0A      errors=remount-ro remount read-only if errors found (default)\0A      errors=panic      panic on errors\0A      chkdsk=no         do not mark fs for chkdsking even if there were errors\0A      chkdsk=errors     mark fs dirty if errors found (default)\0A      chkdsk=always     always mark fs dirty - used for debugging\0A      eas=no            ignore extended attributes\0A      eas=ro            read but do not write extended attributes\0A      eas=rw            r/w eas => enables chmod, chown, mknod, ln -s (default)\0A      timeshift=nnn\09add nnn seconds to file times\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hpfs_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_help() #0 {
  %1 = call i32 @printk(i8* getelementptr inbounds ([1430 x i8], [1430 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
