; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/usr/extr_gen_init_cpio.c_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/usr/extr_gen_init_cpio.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1047 x i8] c"Usage:\0A\09%s <cpio_list>\0A\0A<cpio_list> is a file containing newline separated entries that\0Adescribe the files to be included in the initramfs archive:\0A\0A# a comment\0Afile <name> <location> <mode> <uid> <gid> [<hard links>]\0Adir <name> <mode> <uid> <gid>\0Anod <name> <mode> <uid> <gid> <dev_type> <maj> <min>\0Aslink <name> <target> <mode> <uid> <gid>\0Apipe <name> <mode> <uid> <gid>\0Asock <name> <mode> <uid> <gid>\0A\0A<name>       name of the file/dir/nod/etc in the archive\0A<location>   location of the file in the current filesystem\0A             expands shell variables quoted with ${}\0A<target>     link target\0A<mode>       mode/permissions of the file\0A<uid>        user id (0=root)\0A<gid>        group id (0=root)\0A<dev_type>   device type (b=block, c=character)\0A<maj>        major number of nod\0A<min>        minor number of nod\0A<hard links> space separated list of other links to file\0A\0Aexample:\0A# A simple initramfs\0Adir /dev 0755 0 0\0Anod /dev/console 0600 0 0 c 5 1\0Adir /root 0700 0 0\0Adir /sbin 0755 0 0\0Afile /sbin/kinit /usr/src/klibc/kinit/kinit 0755 0 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([1047 x i8], [1047 x i8]* @.str, i64 0, i64 0), i8* %4)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
