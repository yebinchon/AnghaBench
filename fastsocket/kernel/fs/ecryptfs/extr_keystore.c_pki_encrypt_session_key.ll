; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_keystore.c_pki_encrypt_session_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_keystore.c_pki_encrypt_session_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_auth_tok = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecryptfs_crypt_stat = type { i32, i32 }
%struct.ecryptfs_key_record = type { i32 }
%struct.ecryptfs_msg_ctx = type { i32 }
%struct.ecryptfs_message = type opaque

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error generating tag 66 packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Error sending message to ecryptfsd\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Failed to receive tag 67 packet from the user space daemon\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error parsing tag 67 packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecryptfs_auth_tok*, %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_key_record*)* @pki_encrypt_session_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pki_encrypt_session_key(%struct.ecryptfs_auth_tok* %0, %struct.ecryptfs_crypt_stat* %1, %struct.ecryptfs_key_record* %2) #0 {
  %4 = alloca %struct.ecryptfs_auth_tok*, align 8
  %5 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %6 = alloca %struct.ecryptfs_key_record*, align 8
  %7 = alloca %struct.ecryptfs_msg_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecryptfs_message*, align 8
  %11 = alloca i32, align 4
  store %struct.ecryptfs_auth_tok* %0, %struct.ecryptfs_auth_tok** %4, align 8
  store %struct.ecryptfs_crypt_stat* %1, %struct.ecryptfs_crypt_stat** %5, align 8
  store %struct.ecryptfs_key_record* %2, %struct.ecryptfs_key_record** %6, align 8
  store %struct.ecryptfs_msg_ctx* null, %struct.ecryptfs_msg_ctx** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %4, align 8
  %13 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %21 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ecryptfs_code_for_cipher_string(i32 %19, i32 %22)
  %24 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %25 = call i32 @write_tag_66_packet(i32 %16, i32 %23, %struct.ecryptfs_crypt_stat* %24, i8** %8, i64* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = call i32 @ecryptfs_printk(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %65

31:                                               ; preds = %3
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @ecryptfs_send_message(i8* %32, i64 %33, %struct.ecryptfs_msg_ctx** %7)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = call i32 @ecryptfs_printk(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %65

40:                                               ; preds = %31
  %41 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %7, align 8
  %42 = bitcast %struct.ecryptfs_message** %10 to i8**
  %43 = call i32 @ecryptfs_wait_for_response(%struct.ecryptfs_msg_ctx* %41, i8** %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = call i32 @ecryptfs_printk(i32 %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %65

51:                                               ; preds = %40
  %52 = load %struct.ecryptfs_key_record*, %struct.ecryptfs_key_record** %6, align 8
  %53 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %10, align 8
  %54 = bitcast %struct.ecryptfs_message* %53 to i8*
  %55 = call i32 @parse_tag_67_packet(%struct.ecryptfs_key_record* %52, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = call i32 @ecryptfs_printk(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %10, align 8
  %63 = bitcast %struct.ecryptfs_message* %62 to i8*
  %64 = call i32 @kfree(i8* %63)
  br label %65

65:                                               ; preds = %61, %46, %37, %28
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @write_tag_66_packet(i32, i32, %struct.ecryptfs_crypt_stat*, i8**, i64*) #1

declare dso_local i32 @ecryptfs_code_for_cipher_string(i32, i32) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*) #1

declare dso_local i32 @ecryptfs_send_message(i8*, i64, %struct.ecryptfs_msg_ctx**) #1

declare dso_local i32 @ecryptfs_wait_for_response(%struct.ecryptfs_msg_ctx*, i8**) #1

declare dso_local i32 @parse_tag_67_packet(%struct.ecryptfs_key_record*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
