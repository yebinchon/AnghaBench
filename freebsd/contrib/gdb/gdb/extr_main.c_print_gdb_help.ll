; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_main.c_print_gdb_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_main.c_print_gdb_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [175 x i8] c"This is the GNU debugger.  Usage:\0A\0A    gdb [options] [executable-file [core-file or process-id]]\0A    gdb [options] --args executable-file [inferior-arguments ...]\0A\0AOptions:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"  --args             Arguments after executable-file are passed to inferior\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"  --[no]async        Enable (disable) asynchronous version of CLI\0A\00", align 1
@.str.3 = private unnamed_addr constant [339 x i8] c"  -b BAUDRATE        Set serial port baud rate used for remote debugging.\0A  --batch            Exit after processing options.\0A  --cd=DIR           Change current directory to DIR.\0A  --command=FILE     Execute GDB commands from FILE.\0A  --core=COREFILE    Analyze the core dump COREFILE.\0A  --pid=PID          Attach to running process PID.\0A\00", align 1
@.str.4 = private unnamed_addr constant [337 x i8] c"  --dbx              DBX compatibility mode.\0A  --directory=DIR    Search for source files in DIR.\0A  --epoch            Output information used by epoch emacs-GDB interface.\0A  --exec=EXECFILE    Use EXECFILE as the executable.\0A  --fullname         Output information used by emacs-GDB interface.\0A  --help             Print this message.\0A\00", align 1
@.str.5 = private unnamed_addr constant [92 x i8] c"  --interpreter=INTERP\0A                     Select a specific interpreter / user interface\0A\00", align 1
@.str.6 = private unnamed_addr constant [152 x i8] c"  --mapped           Use mapped symbol files if supported on this system.\0A  --nw\09\09     Do not use a window interface.\0A  --nx               Do not read \00", align 1
@gdbinit = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [131 x i8] c" file.\0A  --quiet            Do not print version number on startup.\0A  --readnow          Fully read symbol files on first access.\0A\00", align 1
@.str.8 = private unnamed_addr constant [192 x i8] c"  --se=FILE          Use FILE as symbol file and executable file.\0A  --symbols=SYMFILE  Read symbols from SYMFILE.\0A  --tty=TTY          Use TTY for input/output by the program being debugged.\0A\00", align 1
@.str.9 = private unnamed_addr constant [218 x i8] c"  --version          Print version information and then exit.\0A  -w                 Use a window interface.\0A  --write            Set writing into executable and core files.\0A  --xdb              XDB compatibility mode.\0A\00", align 1
@.str.10 = private unnamed_addr constant [161 x i8] c"\0AFor more information, type \22help\22 from within GDB, or consult the\0AGDB manual (available as on-line info or a printed manual).\0AReport bugs to \22bug-gdb@gnu.org\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*)* @print_gdb_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_gdb_help(%struct.ui_file* %0) #0 {
  %2 = alloca %struct.ui_file*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %2, align 8
  %3 = call i32 @_(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %5 = call i32 @fputs_unfiltered(i32 %3, %struct.ui_file* %4)
  %6 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %8 = call i32 @fputs_unfiltered(i32 %6, %struct.ui_file* %7)
  %9 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %10 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %11 = call i32 @fputs_unfiltered(i32 %9, %struct.ui_file* %10)
  %12 = call i32 @_(i8* getelementptr inbounds ([339 x i8], [339 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %14 = call i32 @fputs_unfiltered(i32 %12, %struct.ui_file* %13)
  %15 = call i32 @_(i8* getelementptr inbounds ([337 x i8], [337 x i8]* @.str.4, i64 0, i64 0))
  %16 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %17 = call i32 @fputs_unfiltered(i32 %15, %struct.ui_file* %16)
  %18 = call i32 @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0))
  %19 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %20 = call i32 @fputs_unfiltered(i32 %18, %struct.ui_file* %19)
  %21 = call i32 @_(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0))
  %22 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %23 = call i32 @fputs_unfiltered(i32 %21, %struct.ui_file* %22)
  %24 = load i32, i32* @gdbinit, align 4
  %25 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %26 = call i32 @fputs_unfiltered(i32 %24, %struct.ui_file* %25)
  %27 = call i32 @_(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.7, i64 0, i64 0))
  %28 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %29 = call i32 @fputs_unfiltered(i32 %27, %struct.ui_file* %28)
  %30 = call i32 @_(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.8, i64 0, i64 0))
  %31 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %32 = call i32 @fputs_unfiltered(i32 %30, %struct.ui_file* %31)
  %33 = call i32 @_(i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.9, i64 0, i64 0))
  %34 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %35 = call i32 @fputs_unfiltered(i32 %33, %struct.ui_file* %34)
  %36 = call i32 @_(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.10, i64 0, i64 0))
  %37 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %38 = call i32 @fputs_unfiltered(i32 %36, %struct.ui_file* %37)
  ret void
}

declare dso_local i32 @fputs_unfiltered(i32, %struct.ui_file*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
